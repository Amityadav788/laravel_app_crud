<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [

            'name' => $this->faker->name,
            'email' => $this->faker->email,
            'password' => $this->faker->password,
            'phone' =>$this->faker->phoneNumber(),
            'f_name' =>$this->faker->f_name,
            'm_name' =>$this->faker->m_name,
            'image' =>$this->faker->image('public/storage/images',400,300, null, false),
            'b_group' =>$this->faker->bloodgroup,

        ];
    }
}
