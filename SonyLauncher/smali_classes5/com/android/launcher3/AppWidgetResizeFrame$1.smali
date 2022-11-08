.class Lcom/android/launcher3/AppWidgetResizeFrame$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppWidgetResizeFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$shouldShowCellLayoutBorder:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 710
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    iput-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    iput-object p4, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 713
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 714
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$pairedCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->val$shouldShowCellLayoutBorder:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 715
    return-void
.end method
