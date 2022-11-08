.class public Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
.super Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.source "BaseDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/BaseDragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 526
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 533
    invoke-direct {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 534
    return-void
.end method
