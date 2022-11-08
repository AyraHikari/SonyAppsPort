.class abstract Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.super Ljava/lang/Object;
.source "ModelWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UpdateItemBaseRunnable"
.end annotation


# instance fields
.field private final mStackTrace:[Ljava/lang/StackTraceElement;

.field private final mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 1

    .line 539
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 540
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    .line 541
    return-void
.end method


# virtual methods
.method protected updateItemArrays(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "itemId"    # I

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    monitor-enter v0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, p2, p1, v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$mcheckItemInfoLocked(Lcom/android/launcher3/model/ModelWriter;ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 548
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    const/16 v3, -0x64

    const/16 v4, -0x66

    if-eq v1, v3, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v1, v4, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " container being set to: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", not in the list of folders"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "msg":Ljava/lang/String;
    const-string v5, "ModelWriter"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 565
    .local v1, "modelItem":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v1, :cond_3

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v5, v3, :cond_1

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v3, v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v2, v4, :cond_3

    .line 569
    :cond_1
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 586
    :pswitch_0
    goto :goto_0

    .line 574
    :pswitch_1
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v2, v4, :cond_2

    .line 575
    instance-of v2, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 577
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 581
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mVerifier:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-virtual {v2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 593
    .end local v1    # "modelItem":Lcom/android/launcher3/model/data/ItemInfo;
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
