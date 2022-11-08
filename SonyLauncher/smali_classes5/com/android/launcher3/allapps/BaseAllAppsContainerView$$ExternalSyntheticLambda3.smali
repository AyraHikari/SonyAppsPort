.class public final synthetic Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

.field public final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->lambda$setupSortAppsPopupMenu$8$com-android-launcher3-allapps-BaseAllAppsContainerView(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method
