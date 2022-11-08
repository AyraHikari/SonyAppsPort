.class public abstract Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.super Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
.source "FocusIndicatorHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper<",
        "Landroid/view/View;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->focused_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;-><init>(Landroid/view/View;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->changeFocus(Ljava/lang/Object;Z)V

    .line 38
    return-void
.end method

.method protected shouldDraw(Landroid/view/View;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic shouldDraw(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->shouldDraw(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
