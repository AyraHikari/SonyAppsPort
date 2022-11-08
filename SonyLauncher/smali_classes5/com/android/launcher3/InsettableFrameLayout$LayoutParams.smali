.class public Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "InsettableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InsettableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public ignoreInsets:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 75
    sget-object v1, Lcom/android/launcher3/R$styleable;->InsettableFrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/launcher3/R$styleable;->InsettableFrameLayout_Layout_layout_ignoreInsets:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 88
    return-void
.end method
