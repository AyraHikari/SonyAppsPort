.class Landroidx/viewpager/widget/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/ViewPager;->initViewPager(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/viewpager/widget/ViewPager;

    .line 440
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "originalInsets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 447
    nop

    .line 448
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 449
    .local v0, "applied":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    return-object v0

    .line 461
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 462
    .local v1, "res":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 463
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 464
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 465
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 467
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 468
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager$4;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 469
    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v4

    .line 472
    .local v4, "childInsets":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 474
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 476
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 478
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 467
    .end local v4    # "childInsets":Landroidx/core/view/WindowInsetsCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    new-instance v2, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v2, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 484
    invoke-static {v1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 483
    return-object v2
.end method
