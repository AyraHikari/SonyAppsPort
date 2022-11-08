.class public final Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InputConsumerProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/InputConsumerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/InputConsumerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/InputConsumerProto;",
        "Lcom/android/launcher3/tracing/InputConsumerProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/InputConsumerProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 221
    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/InputConsumerProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$mclearName(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    .line 262
    return-object p0
.end method

.method public clearSwipeHandler()Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$mclearSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    .line 318
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeHandler()Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->getSwipeHandler()Lcom/android/launcher3/tracing/SwipeHandlerProto;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasSwipeHandler()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->hasSwipeHandler()Z

    move-result v0

    return v0
.end method

.method public mergeSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$mmergeSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 311
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$msetName(Lcom/android/launcher3/tracing/InputConsumerProto;Ljava/lang/String;)V

    .line 254
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$msetNameBytes(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/google/protobuf/ByteString;)V

    .line 271
    return-object p0
.end method

.method public setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$msetSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V

    .line 303
    return-object p0
.end method

.method public setSwipeHandler(Lcom/android/launcher3/tracing/SwipeHandlerProto;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->copyOnWrite()V

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto;->-$$Nest$msetSwipeHandler(Lcom/android/launcher3/tracing/InputConsumerProto;Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 294
    return-object p0
.end method
