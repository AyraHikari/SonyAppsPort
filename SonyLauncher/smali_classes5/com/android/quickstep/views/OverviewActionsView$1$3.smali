.class Lcom/android/quickstep/views/OverviewActionsView$1$3;
.super Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;
.source "OverviewActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OverviewActionsView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/views/OverviewActionsView<",
        "TT;>.OverviewAction;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/views/OverviewActionsView$1;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "this$1"    # Lcom/android/quickstep/views/OverviewActionsView$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "actionResId"    # I
    .param p4, "spaceResId"    # I
    .param p5, "iconResId"    # I
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 472
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$3;, "Lcom/android/quickstep/views/OverviewActionsView$1$3;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v1, p1, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;-><init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .line 475
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$3;, "Lcom/android/quickstep/views/OverviewActionsView$1$3;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/quickstep/DualDriveUtil;->isDualDriveAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method setViewEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 491
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$3;, "Lcom/android/quickstep/views/OverviewActionsView$1$3;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v0, v0, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->mActionResId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, "actionView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 493
    return-void
.end method

.method setVisibility(I)V
    .locals 6
    .param p1, "hiddenFlags"    # I

    .line 480
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$3;, "Lcom/android/quickstep/views/OverviewActionsView$1$3;"
    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 482
    .local v0, "isHidden":Z
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v2, v2, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v3, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->mActionResId:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 483
    .local v2, "actionView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v3, v3, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v4, p0, Lcom/android/quickstep/views/OverviewActionsView$1$3;->mSpaceResId:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    .line 484
    .local v3, "space":Landroid/widget/Space;
    const/16 v4, 0x8

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 485
    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 486
    return-void
.end method
