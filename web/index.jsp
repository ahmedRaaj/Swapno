

<div id="indexLeftColumn">
    <div id="welcomeText">
        <p style="font-size: larger">Welcome to Swapno.</p>

        <p>This is a demo project which under developing by Ahmed Alamin Raaj(Id 09-14130-2) department of 
        CSE,American International University Bangladesh</p>
    </div>
</div>

<div id="indexRightColumn">
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
            <a href="category?${category.id}">
                <span class="categoryLabel"></span>
                <span class="categoryLabelText">${category.name}</span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="${category.name}" class="categoryImage">
            </a>
        </div>
    </c:forEach>
</div>