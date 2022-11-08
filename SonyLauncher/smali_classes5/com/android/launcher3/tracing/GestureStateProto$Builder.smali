.class public final Lcom/android/launcher3/tracing/GestureStateProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GestureStateProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/GestureStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/GestureStateProto;",
        "Lcom/android/launcher3/tracing/GestureStateProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/GestureStateProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEndTarget()Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->copyOnWrite()V

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->-$$Nest$mclearEndTarget(Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 284
    return-object p0
.end method

.method public getEndTarget()Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->getEndTarget()Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object v0

    return-object v0
.end method

.method public hasEndTarget()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->hasEndTarget()Z

    move-result v0

    return v0
.end method

.method public setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->copyOnWrite()V

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/GestureStateProto;->-$$Nest$msetEndTarget(Lcom/android/launcher3/tracing/GestureStateProto;Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    .line 276
    return-object p0
.end method
