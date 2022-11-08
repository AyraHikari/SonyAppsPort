.class Lcom/android/launcher3/folder/Folder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$currentCellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$useHardware:Z

.field final synthetic val$wasHardwareAccelerated:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;ZLcom/android/launcher3/CellLayout;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;

    .line 596
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$3;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    iput-object p3, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p4, p0, Lcom/android/launcher3/folder/Folder$3;->val$wasHardwareAccelerated:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 606
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder$3;->val$wasHardwareAccelerated:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 599
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder$3;->val$useHardware:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$3;->val$currentCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 602
    :cond_0
    return-void
.end method
