.class public final synthetic Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/DiscoveryBounce;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    return-void
.end method
