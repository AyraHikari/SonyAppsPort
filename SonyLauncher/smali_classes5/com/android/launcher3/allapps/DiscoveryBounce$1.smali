.class Lcom/android/launcher3/allapps/DiscoveryBounce$1;
.super Ljava/lang/Object;
.source "DiscoveryBounce.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/DiscoveryBounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/DiscoveryBounce;

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 54
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    .line 51
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
