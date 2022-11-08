.class public final Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictedHotseatContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainerOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private index_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->clearCardinality()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->clearIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->setCardinality(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->setIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 12427
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;-><init>()V

    .line 12430
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 12431
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12433
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12112
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 12188
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    .line 12189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->cardinality_:I

    .line 12190
    return-void
.end method

.method private clearIndex()V
    .locals 1

    .line 12141
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    .line 12142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->index_:I

    .line 12143
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1

    .line 12436
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1

    .line 12267
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    .line 12270
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12244
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12250
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12208
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12215
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12255
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12262
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12232
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12239
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12195
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12202
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12220
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12227
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;",
            ">;"
        }
    .end annotation

    .line 12442
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCardinality(I)V
    .locals 1
    .param p1, "value"    # I

    .line 12177
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    .line 12178
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->cardinality_:I

    .line 12179
    return-void
.end method

.method private setIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 12134
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    .line 12135
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->index_:I

    .line 12136
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 12376
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 12420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 12417
    :pswitch_0
    return-object v2

    .line 12414
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 12399
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 12400
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;>;"
    if-nez v0, :cond_1

    .line 12401
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    monitor-enter v1

    .line 12402
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 12403
    if-nez v0, :cond_0

    .line 12404
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 12407
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 12409
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 12411
    :cond_1
    :goto_0
    return-object v0

    .line 12396
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object v0

    .line 12384
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "index_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardinality_"

    aput-object v2, v0, v1

    .line 12389
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001"

    .line 12392
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 12381
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder-IA;)V

    return-object v0

    .line 12378
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;-><init>()V

    return-object v0

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

.method public getCardinality()I
    .locals 1

    .line 12167
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->cardinality_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 12128
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->index_:I

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 12156
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .line 12121
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
