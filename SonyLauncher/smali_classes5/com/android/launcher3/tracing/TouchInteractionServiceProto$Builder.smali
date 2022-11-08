.class public final Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TouchInteractionServiceProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 255
    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInputConsumer()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$mclearInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    .line 381
    return-object p0
.end method

.method public clearOverviewComponentObvserver()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$mclearOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    .line 334
    return-object p0
.end method

.method public clearServiceConnected()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$mclearServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V

    .line 287
    return-object p0
.end method

.method public getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v0

    return-object v0
.end method

.method public getServiceConnected()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getServiceConnected()Z

    move-result v0

    return v0
.end method

.method public hasInputConsumer()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasInputConsumer()Z

    move-result v0

    return v0
.end method

.method public hasOverviewComponentObvserver()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasOverviewComponentObvserver()Z

    move-result v0

    return v0
.end method

.method public hasServiceConnected()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->hasServiceConnected()Z

    move-result v0

    return v0
.end method

.method public mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$mmergeInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V

    .line 374
    return-object p0
.end method

.method public mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$mmergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    .line 327
    return-object p0
.end method

.method public setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$msetInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto$Builder;)V

    .line 366
    return-object p0
.end method

.method public setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$msetInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V

    .line 357
    return-object p0
.end method

.method public setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$msetOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;)V

    .line 319
    return-object p0
.end method

.method public setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$msetOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    .line 310
    return-object p0
.end method

.method public setServiceConnected(Z)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->copyOnWrite()V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->-$$Nest$msetServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Z)V

    .line 279
    return-object p0
.end method
