.class public Landroidx/slice/widget/MessageView;
.super Landroidx/slice/widget/SliceChildView;
.source "MessageView.java"


# instance fields
.field private mDetails:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onFinishInflate()V

    .line 66
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    .line 67
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method public resetView()V
    .locals 0

    .line 61
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 8
    .param p1, "content"    # Landroidx/slice/widget/SliceContent;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 73
    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 74
    .local v0, "slice":Landroidx/slice/SliceItem;
    invoke-virtual {p0, p5}, Landroidx/slice/widget/MessageView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 75
    const-string v1, "image"

    const-string v2, "source"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 76
    .local v1, "source":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/slice/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 78
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 79
    const/4 v3, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 80
    invoke-virtual {p0}, Landroidx/slice/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 79
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 82
    .local v3, "iconSize":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 83
    .local v4, "iconBm":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v5, "iconCanvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v6, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Landroidx/slice/widget/SliceViewUtil;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconSize":I
    .end local v4    # "iconBm":Landroid/graphics/Bitmap;
    .end local v5    # "iconCanvas":Landroid/graphics/Canvas;
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 90
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    const-string v3, "text"

    invoke-static {v0, v3}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 92
    .local v5, "text":Landroidx/slice/SliceItem;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 95
    :cond_1
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    .end local v5    # "text":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 97
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
