.class Lcom/android/launcher3/statehandlers/DepthController$4;
.super Ljava/lang/Object;
.source "DepthController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 118
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$4;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$4;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$mdispatchTransactionSurface(Lcom/android/launcher3/statehandlers/DepthController;F)Z

    .line 122
    return-void
.end method
