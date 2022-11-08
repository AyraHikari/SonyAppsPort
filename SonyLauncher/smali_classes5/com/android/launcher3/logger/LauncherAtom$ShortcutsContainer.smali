.class public final Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortcutsContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 6838
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;-><init>()V

    .line 6841
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 6842
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6844
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6685
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1

    .line 6847
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;
    .locals 1

    .line 6761
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    .line 6764
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6738
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6744
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6702
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6709
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6749
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6756
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6726
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6733
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6689
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6696
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6714
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6721
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;",
            ">;"
        }
    .end annotation

    .line 6853
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 6793
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6831
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6828
    :pswitch_0
    return-object v1

    .line 6825
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6810
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6811
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;>;"
    if-nez v0, :cond_1

    .line 6812
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    monitor-enter v1

    .line 6813
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 6814
    if-nez v0, :cond_0

    .line 6815
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 6818
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6820
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6822
    :cond_1
    :goto_0
    return-object v0

    .line 6807
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    return-object v0

    .line 6801
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0000"

    .line 6803
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 6798
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder-IA;)V

    return-object v0

    .line 6795
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;-><init>()V

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
