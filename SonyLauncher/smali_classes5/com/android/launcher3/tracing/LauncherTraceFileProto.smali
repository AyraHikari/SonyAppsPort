.class public final Lcom/android/launcher3/tracing/LauncherTraceFileProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherTraceFileProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;,
        Lcom/android/launcher3/tracing/LauncherTraceFileProto$MagicNumber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

.field public static final ENTRY_FIELD_NUMBER:I = 0x2

.field public static final MAGIC_NUMBER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private entry_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation
.end field

.field private magicNumber_:J


# direct methods
.method static bridge synthetic -$$Nest$maddAllEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->addAllEntry(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->clearEntry()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMagicNumber(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->clearMagicNumber()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->removeEntry(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEntry(Lcom/android/launcher3/tracing/LauncherTraceFileProto;ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMagicNumber(Lcom/android/launcher3/tracing/LauncherTraceFileProto;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->setMagicNumber(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 614
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;-><init>()V

    .line 617
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    .line 618
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 620
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    return-void
.end method

.method private addAllEntry(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/tracing/LauncherTraceEntryProto;>;"
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 292
    return-void
.end method

.method private addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 281
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 283
    return-void
.end method

.method private addEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 262
    if-eqz p2, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private addEntry(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 251
    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 256
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearEntry()V
    .locals 1

    .line 297
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 298
    return-void
.end method

.method private clearMagicNumber()V
    .locals 2

    .line 180
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->bitField0_:I

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->magicNumber_:J

    .line 182
    return-void
.end method

.method private ensureEntryIsMutable()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 224
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 226
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1

    .line 623
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1

    .line 382
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/LauncherTraceFileProto;)Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    .line 385
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/LauncherTraceFileProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/LauncherTraceFileProto;",
            ">;"
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEntry(I)V
    .locals 1
    .param p1, "index"    # I

    .line 303
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method private setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;

    .line 244
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private setEntry(ILcom/android/launcher3/tracing/LauncherTraceEntryProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    .line 233
    if-eqz p2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->ensureEntryIsMutable()V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setMagicNumber(J)V
    .locals 1
    .param p1, "value"    # J

    .line 169
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->bitField0_:I

    .line 170
    iput-wide p1, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->magicNumber_:J

    .line 171
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 607
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 604
    :pswitch_0
    return-object v2

    .line 601
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 586
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 587
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceFileProto;>;"
    if-nez v0, :cond_1

    .line 588
    const-class v1, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    monitor-enter v1

    .line 589
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 590
    if-nez v0, :cond_0

    .line 591
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 594
    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 596
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 598
    :cond_1
    :goto_0
    return-object v0

    .line 583
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/LauncherTraceFileProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    return-object v0

    .line 570
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "magicNumber_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "entry_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    aput-object v2, v0, v1

    .line 576
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0005\u0000\u0002\u001b"

    .line 579
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 567
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder;-><init>(Lcom/android/launcher3/tracing/LauncherTraceFileProto$Builder-IA;)V

    return-object v0

    .line 564
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceFileProto;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
    .locals 1
    .param p1, "index"    # I

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryOrBuilder(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;

    return-object v0
.end method

.method public getEntryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMagicNumber()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->magicNumber_:J

    return-wide v0
.end method

.method public hasMagicNumber()Z
    .locals 2

    .line 148
    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceFileProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
