.class public final Lcom/android/launcher3/logger/LauncherAtom$Slice;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SliceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$Slice;",
        "Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SliceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Slice;",
            ">;"
        }
    .end annotation
.end field

.field public static final URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearUri(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->clearUri()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUri(Lcom/android/launcher3/logger/LauncherAtom$Slice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUriBytes(Lcom/android/launcher3/logger/LauncherAtom$Slice;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->setUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 10839
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;-><init>()V

    .line 10842
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Slice;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 10843
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10845
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Slice;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10577
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10578
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    .line 10579
    return-void
.end method

.method private clearUri()V
    .locals 1

    .line 10620
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    .line 10621
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    .line 10622
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1

    .line 10848
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    .locals 1

    .line 10710
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 10713
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10687
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10693
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10651
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10658
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10698
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10705
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10675
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10682
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10638
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10645
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10663
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10670
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Slice;",
            ">;"
        }
    .end annotation

    .line 10854
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10610
    if-eqz p1, :cond_0

    .line 10613
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    .line 10614
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    .line 10615
    return-void

    .line 10611
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10628
    if-eqz p1, :cond_0

    .line 10631
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    .line 10632
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    .line 10633
    return-void

    .line 10629
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 10790
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 10829
    :pswitch_0
    return-object v2

    .line 10826
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 10811
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->PARSER:Lcom/google/protobuf/Parser;

    .line 10812
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Slice;>;"
    if-nez v0, :cond_1

    .line 10813
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    monitor-enter v1

    .line 10814
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Slice;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 10815
    if-nez v0, :cond_0

    .line 10816
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 10819
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->PARSER:Lcom/google/protobuf/Parser;

    .line 10821
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 10823
    :cond_1
    :goto_0
    return-object v0

    .line 10808
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Slice;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object v0

    .line 10798
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "uri_"

    aput-object v2, v0, v1

    .line 10802
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0008\u0000"

    .line 10804
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Slice;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 10795
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder-IA;)V

    return-object v0

    .line 10792
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Slice;-><init>()V

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

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 10595
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10603
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->uri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasUri()Z
    .locals 2

    .line 10588
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
