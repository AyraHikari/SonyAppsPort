.class public Lcom/android/quickstep/views/SplitPlaceholderView;
.super Landroid/widget/FrameLayout;
.source "SplitPlaceholderView.java"


# static fields
.field public static final ALPHA_FLOAT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/SplitPlaceholderView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIconView:Lcom/android/quickstep/views/IconView;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/quickstep/views/SplitPlaceholderView$1;

    const-string v1, "SplitViewAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/SplitPlaceholderView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/SplitPlaceholderView;->ALPHA_FLOAT:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    invoke-static {p1}, Lcom/android/quickstep/views/SplitPlaceholderView;->getThemeBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->setWillNotDraw(Z)V

    .line 58
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 92
    invoke-virtual {p0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/FloatingTaskView;

    .line 93
    .local v0, "parent":Lcom/android/quickstep/views/FloatingTaskView;
    iget-object v1, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/views/FloatingTaskView;->drawRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method private static getThemeBackgroundColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 99
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/SplitPlaceholderView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/FloatingTaskView;

    .line 71
    .local v0, "parent":Lcom/android/quickstep/views/FloatingTaskView;
    iget-object v1, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v2, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/FloatingTaskView;->centerIconView(Lcom/android/quickstep/views/IconView;FF)V

    .line 73
    .end local v0    # "parent":Lcom/android/quickstep/views/FloatingTaskView;
    :cond_0
    return-void
.end method

.method public getIconView()Lcom/android/quickstep/views/IconView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconSize"    # I

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/SplitPlaceholderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/IconView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/SplitPlaceholderView;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p2}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    .line 87
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/views/SplitPlaceholderView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method
