.class public final synthetic Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->lambda$setupHeader$6(ILcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)V

    return-void
.end method
