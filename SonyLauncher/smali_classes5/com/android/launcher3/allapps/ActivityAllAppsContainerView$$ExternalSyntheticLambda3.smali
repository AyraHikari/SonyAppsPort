.class public final synthetic Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$setLastSearchQuery$0$com-android-launcher3-allapps-ActivityAllAppsContainerView(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
