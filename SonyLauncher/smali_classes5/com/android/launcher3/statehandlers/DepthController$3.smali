.class Lcom/android/launcher3/statehandlers/DepthController$3;
.super Ljava/lang/Object;
.source "DepthController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$3;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$3;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fputmCrossWindowBlursEnabled(Lcom/android/launcher3/statehandlers/DepthController;Z)V

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$3;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$mdispatchTransactionSurface(Lcom/android/launcher3/statehandlers/DepthController;F)Z

    .line 115
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
