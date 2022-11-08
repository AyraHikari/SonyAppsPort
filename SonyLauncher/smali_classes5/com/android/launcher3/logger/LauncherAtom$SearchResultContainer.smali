.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;,
        Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_CONTAINER_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_LENGTH_FIELD_NUMBER:I = 0x1

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;

.field private queryLength_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->clearAllAppsContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->clearParentContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->clearQueryLength()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->clearWorkspace()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setQueryLength(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 6648
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;-><init>()V

    .line 6651
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 6652
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6654
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6114
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6115
    return-void
.end method

.method private clearAllAppsContainer()V
    .locals 2

    .line 6327
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6328
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6331
    :cond_0
    return-void
.end method

.method private clearParentContainer()V
    .locals 1

    .line 6158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6160
    return-void
.end method

.method private clearQueryLength()V
    .locals 1

    .line 6205
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    .line 6206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    .line 6207
    return-void
.end method

.method private clearWorkspace()V
    .locals 2

    .line 6265
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6269
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1

    .line 6657
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method private mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6311
    if-eqz p1, :cond_1

    .line 6314
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6315
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6316
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    move-result-object v0

    .line 6317
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 6319
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6321
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6322
    return-void

    .line 6312
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6249
    if-eqz p1, :cond_1

    .line 6252
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6253
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6254
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    .line 6255
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 6257
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6259
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6260
    return-void

    .line 6250
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6408
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    .line 6411
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6385
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6391
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6349
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6356
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6396
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6403
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6373
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6380
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6336
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6343
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6361
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6368
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
            ">;"
        }
    .end annotation

    .line 6663
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 6304
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6305
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6306
    return-void
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6293
    if-eqz p1, :cond_0

    .line 6296
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6297
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6298
    return-void

    .line 6294
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setQueryLength(I)V
    .locals 1
    .param p1, "value"    # I

    .line 6194
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    .line 6195
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    .line 6196
    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 6242
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6243
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6244
    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6231
    if-eqz p1, :cond_0

    .line 6234
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    .line 6235
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    .line 6236
    return-void

    .line 6232
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

    .line 6594
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6638
    :pswitch_0
    return-object v2

    .line 6635
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6620
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6621
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;>;"
    if-nez v0, :cond_1

    .line 6622
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    monitor-enter v1

    .line 6623
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 6624
    if-nez v0, :cond_0

    .line 6625
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 6628
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 6630
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6632
    :cond_1
    :goto_0
    return-object v0

    .line 6617
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0

    .line 6602
    :pswitch_4
    const/4 v0, 0x6

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

    const-string v2, "queryLength_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    aput-object v2, v0, v1

    .line 6610
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002<\u0000\u0003<\u0000"

    .line 6613
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 6599
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder-IA;)V

    return-object v0

    .line 6596
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;-><init>()V

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

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 2

    .line 6284
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6285
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0

    .line 6287
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    .line 6153
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getQueryLength()I
    .locals 1

    .line 6184
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    .line 6222
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6223
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0

    .line 6225
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppsContainer()Z
    .locals 2

    .line 6277
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQueryLength()Z
    .locals 2

    .line 6173
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWorkspace()Z
    .locals 2

    .line 6215
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
