.class public Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;
.super Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.source "FocusIndicatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFocusIndicatorHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    return-void
.end method

.method public bridge synthetic viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 48
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
