.class public final synthetic Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

.field public final synthetic f$1:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->lambda$setupSortAppsPopupMenu$7$com-android-launcher3-allapps-BaseAllAppsContainerView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
