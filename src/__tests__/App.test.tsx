import { describe, expect, test } from 'vitest';
import { render, screen, fireEvent } from '@testing-library/react';
import App from '../App';

describe("App test", () => {
    test("renders count button with counter at 0", () => {
        render(<App/>);
        expect(screen.getByRole('button', { name: /count is 0/i })).toBeDefined()
    })

    test("click button increases count", () => {
        render(<App/>);
        const button = screen.getByRole('button', { name: /count is 0/i })
        fireEvent.click(button)
        expect(screen.getByRole('button', { name: /count is 1/i })).toBeDefined()
    })
})