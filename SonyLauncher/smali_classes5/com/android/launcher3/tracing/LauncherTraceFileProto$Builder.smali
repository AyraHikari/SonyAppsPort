.class public final Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherTraceFileProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceFileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 404
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEntry(Ljava/lang/Iterable;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;)",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;"
        }
    .end annotation

    .line 534
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/tracing/LauncherTraceEntryProto;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$maddAllEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Ljava/lang/Iterable;)V

    .line 536
    return-object p0
.end method

.method public addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    .line 527
    return-object p0
.end method

.method public addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 509
    return-object p0
.end method

.method public addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 516
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    .line 518
    return-object p0
.end method

.method public addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 500
    return-object p0
.end method

.method public clearEntry()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$mclearEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V

    .line 544
    return-object p0
.end method

.method public clearMagicNumber()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$mclearMagicNumber(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V

    .line 452
    return-object p0
.end method

.method public getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p1, "index"    # I

    .line 474
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    move-result-object v0

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntryCount()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    .line 461
    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getEntryList()Ljava/util/List;

    move-result-object v0

    .line 460
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMagicNumber()J
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getMagicNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasMagicNumber()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->hasMagicNumber()Z

    move-result v0

    return v0
.end method

.method public removeEntry(I)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 550
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$mremoveEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;I)V

    .line 552
    return-object p0
.end method

.method public setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$msetEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    .line 492
    return-object p0
.end method

.method public setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$msetEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 483
    return-object p0
.end method

.method public setMagicNumber(J)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->-$$Nest$msetMagicNumber(Lcom/android/launcher3/tracing/LauncherTraceFileProto;J)V

    .line 440
    return-object p0
.end method
