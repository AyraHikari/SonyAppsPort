.class Lcom/android/quickstep/views/OverviewActionsView$1$1;
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

    .line 411
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$1;, "Lcom/android/quickstep/views/OverviewActionsView$1$1;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$1;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

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

    .line 414
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$1;, "Lcom/android/quickstep/views/OverviewActionsView$1$1;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERVIEW_SHARE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    return v0
.end method
