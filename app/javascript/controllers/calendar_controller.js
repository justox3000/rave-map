import { Controller } from "@hotwired/stimulus"
import { Calendar } from "@toast-ui/calendar";

export default class extends Controller {
  connect() {
    const container = document.getElementById('calendar');
    const options = {
      defaultView: 'week',
      timezone: {
        zones: [
          {
            timezoneName: 'Asia/Seoul',
            displayLabel: 'Seoul',
          },
          {
            timezoneName: 'Europe/London',
            displayLabel: 'London',
          },
        ],
      },
      calendars: [
        {
          id: 'cal1',
          name: 'Personal',
          backgroundColor: '#03bd9e',
        },
        {
          id: 'cal2',
          name: 'Work',
          backgroundColor: '#00a9ff',
        },
      ],
    };

    const calendar = new Calendar(container, options);
  }
}
