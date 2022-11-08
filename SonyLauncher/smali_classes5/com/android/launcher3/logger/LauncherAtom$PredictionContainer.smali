.class public final Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$PredictionContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;,
        Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASKBAR_CONTAINER_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->clearParentContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->clearTaskbarContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 6042
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;-><init>()V

    .line 6045
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 6046
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6048
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5717
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5718
    return-void
.end method

.method private clearParentContainer()V
    .locals 1

    .line 5759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5761
    return-void
.end method

.method private clearTaskbarContainer()V
    .locals 2

    .line 5819
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5820
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5823
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1

    .line 6051
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method private mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5803
    if-eqz p1, :cond_1

    .line 5806
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5807
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5808
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    .line 5809
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 5811
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5813
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5814
    return-void

    .line 5804
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1

    .line 5900
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    .line 5903
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5877
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5883
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5841
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5848
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5888
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5895
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5865
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5872
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5828
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5835
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5853
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5860
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;",
            ">;"
        }
    .end annotation

    .line 6057
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 5796
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5797
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5798
    return-void
.end method

.method private setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5785
    if-eqz p1, :cond_0

    .line 5788
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    .line 5789
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    .line 5790
    return-void

    .line 5786
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

    .line 5991
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6035
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6032
    :pswitch_0
    return-object v2

    .line 6029
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6014
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6015
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;>;"
    if-nez v0, :cond_1

    .line 6016
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    monitor-enter v1

    .line 6017
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 6018
    if-nez v0, :cond_0

    .line 6019
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 6022
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6024
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6026
    :cond_1
    :goto_0
    return-object v0

    .line 6011
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object v0

    .line 5999
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "parentContainer_"

    aput-object v3, v0, v2

    const-string v2, "parentContainerCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    aput-object v2, v0, v1

    .line 6005
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    .line 6007
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5996
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder-IA;)V

    return-object v0

    .line 5993
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;-><init>()V

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

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1

    .line 5754
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    .line 5776
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5777
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0

    .line 5779
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasTaskbarContainer()Z
    .locals 2

    .line 5769
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
