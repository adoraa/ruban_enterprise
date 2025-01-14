import { ShoppingCart } from 'lucide-react'
import React from 'react'

export default function SmallCard() {
  return (
    <div className='rounded-lg shadow-lg bg-slate-700 p-4'>
        <div className='flex space-x-4'>
            <div className="w-8 h-8 bg-orange-600 rounded-full items-center flex justify-center">
                <ShoppingCart className=''/>
            </div>
            <div className="">
                <p>Total Orders</p>
                <h3 className='text-2xl'>450</h3>
            </div>
        </div>
    </div>
  )
}
