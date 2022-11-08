.class public Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;
.super Ljava/lang/Object;
.source "LauncherViewsMoveFromCenterTranslationApplier.java"

# interfaces
.implements Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 34
    instance-of v0, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/BubbleTextView;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTranslationForMoveFromCenterAnimation(FF)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    :goto_0
    return-void
.end method
