.class public final Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedContainers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;,
        Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

.field public static final DEVICE_SEARCH_RESULT_CONTAINER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private containerCase_:I

.field private container_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->clearContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->clearDeviceSearchResultContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->mergeDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 369
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;-><init>()V

    .line 372
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 373
    const-class v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 375
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 42
    return-void
.end method

.method private clearContainer()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private clearDeviceSearchResultContainer()V
    .locals 2

    .line 143
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 147
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    .line 378
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method private mergeDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 127
    if-eqz p1, :cond_1

    .line 130
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 137
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 138
    return-void

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1

    .line 224
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    .line 227
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;",
            ">;"
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    .line 120
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 122
    return-void
.end method

.method private setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 109
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    .line 114
    return-void

    .line 110
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

    .line 318
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 359
    :pswitch_0
    return-object v2

    .line 356
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 341
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->PARSER:Lcom/google/protobuf/Parser;

    .line 342
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;>;"
    if-nez v0, :cond_1

    .line 343
    const-class v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    monitor-enter v1

    .line 344
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 345
    if-nez v0, :cond_0

    .line 346
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 349
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->PARSER:Lcom/google/protobuf/Parser;

    .line 351
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 353
    :cond_1
    :goto_0
    return-object v0

    .line 338
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object v0

    .line 326
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "container_"

    aput-object v3, v0, v2

    const-string v2, "containerCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    aput-object v2, v0, v1

    .line 332
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    .line 334
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 323
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder-IA;)V

    return-object v0

    .line 320
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;-><init>()V

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

.method public getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceSearchResultContainer()Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
