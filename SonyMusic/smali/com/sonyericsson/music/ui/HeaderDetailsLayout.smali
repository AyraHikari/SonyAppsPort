.class public Lcom/sonyericsson/music/ui/HeaderDetailsLayout;
.super Landroid/view/ViewGroup;
.source "HeaderDetailsLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mBottomAlignedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mTopAlignedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mPrimaryViews:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mBottomAlignedViews:Ljava/util/List;

    return-void
.end method

.method private static nullCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private placeChild(Landroid/view/View;II)I
    .locals 4

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, p2, v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, p3

    add-int/2addr p2, v1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    .line 172
    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    return p1
.end method

.method private placeChildInverted(Landroid/view/View;II)I
    .locals 4

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, p3, v2

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v3

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, v3

    .line 183
    invoke-virtual {p1, v1, v2, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 108
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method protected findViews()V
    .locals 4

    const v0, 0x7f0900cc

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0901eb

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0901ec

    .line 75
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mPrimaryViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mPrimaryViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mPrimaryViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mBottomAlignedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 103
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 98
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 113
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    if-ne p1, p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->findViews()V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 56
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->findViews()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    .line 154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 156
    iget-object p4, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTopAlignedViews:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 158
    invoke-direct {p0, v0, p2, p1}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->placeChild(Landroid/view/View;II)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p5, p3

    .line 162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p5, p1

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mBottomAlignedViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 164
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eq p4, v1, :cond_2

    .line 165
    invoke-direct {p0, p3, p2, p5}, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->placeChildInverted(Landroid/view/View;II)I

    move-result p3

    sub-int/2addr p5, p3

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p2

    const/high16 v8, -0x80000000

    if-nez v7, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v7

    .line 124
    :goto_0
    iget-object v0, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mPrimaryViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/View;

    .line 125
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move v4, v9

    move v5, v11

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 128
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 129
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v12, v0

    goto :goto_1

    .line 133
    :cond_2
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, v11

    .line 134
    iget-object v1, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_3

    .line 137
    iget-object v1, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move v4, v9

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    .line 139
    :cond_3
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 140
    iget-object v1, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 143
    :goto_2
    iget-object v0, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    iget-object v1, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 145
    iget-object v1, v6, Lcom/sonyericsson/music/ui/HeaderDetailsLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p1

    .line 148
    invoke-static {v0, v2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v0

    invoke-static {v1, v7}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
