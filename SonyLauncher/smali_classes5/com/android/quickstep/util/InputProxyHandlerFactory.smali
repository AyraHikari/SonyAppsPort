.class public Lcom/android/quickstep/util/InputProxyHandlerFactory;
.super Ljava/lang/Object;
.source "InputProxyHandlerFactory.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/quickstep/InputConsumer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private final mGestureState:Lcom/android/quickstep/GestureState;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/GestureState;)V
    .locals 0
    .param p1, "activityInterface"    # Lcom/android/quickstep/BaseActivityInterface;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/quickstep/util/InputProxyHandlerFactory;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 41
    iput-object p2, p0, Lcom/android/quickstep/util/InputProxyHandlerFactory;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 42
    return-void
.end method


# virtual methods
.method public get()Lcom/android/quickstep/InputConsumer;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/android/quickstep/util/InputProxyHandlerFactory;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 50
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;

    iget-object v2, p0, Lcom/android/quickstep/util/InputProxyHandlerFactory;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    .line 50
    :goto_0
    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/quickstep/util/InputProxyHandlerFactory;->get()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    return-object v0
.end method
