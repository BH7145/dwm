#!/bin/bash
xbacklight + 5
LI=$(xbacklight | cut -d. -f1)
xsetroot -name "🔆 ${LI}"
