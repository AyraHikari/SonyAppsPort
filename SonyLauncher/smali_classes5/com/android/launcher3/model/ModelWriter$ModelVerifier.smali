.class public Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
.super Ljava/lang/Object;
.source "ModelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelVerifier"
.end annotation


# instance fields
.field final startId:I

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/model/ModelWriter;

    .line 604
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-static {p1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->startId:I

    .line 606
    return-void
.end method


# virtual methods
.method synthetic lambda$verifyModel$0$com-android-launcher3-model-ModelWriter$ModelVerifier(I)V
    .locals 2
    .param p1, "executeId"    # I

    .line 616
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 617
    .local v0, "currentId":I
    if-le v0, p1, :cond_0

    .line 619
    return-void

    .line 621
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->startId:I

    if-ne p1, v1, :cond_1

    .line 623
    return-void

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    .line 628
    return-void
.end method

.method verifyModel()V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmVerifyChanges(Lcom/android/launcher3/model/ModelWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->hasCallbacks()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 615
    .local v0, "executeId":I
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmUiExecutor(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$ModelVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 629
    return-void

    .line 610
    .end local v0    # "executeId":I
    :cond_1
    :goto_0
    return-void
.end method
