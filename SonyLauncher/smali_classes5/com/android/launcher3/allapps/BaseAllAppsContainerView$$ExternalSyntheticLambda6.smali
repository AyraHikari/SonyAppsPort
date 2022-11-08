.class public final synthetic Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeviceProfile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/DeviceProfile;

    iput p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->lambda$applyAdapterSideAndBottomPaddings$4(Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)V

    return-void
.end method
