import { h } from "@lite-jsx/core";

export const wrapper = (tag, props) => {
    const { children, ...restProps } = props ?? {}
    const childArray = Array.isArray(children) ? children : [children]
    return h(tag, restProps, ...childArray)
}