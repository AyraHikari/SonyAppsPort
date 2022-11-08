.class public final Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceSearchResultContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;,
        Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;,
        Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributesOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

.field public static final GRID_X_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_LENGTH_FIELD_NUMBER:I = 0x1

.field public static final SEARCH_ATTRIBUTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private gridX_:I

.field private queryLength_:I

.field private searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;


# direct methods
.method static bridge synthetic -$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->clearGridX()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearQueryLength(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->clearQueryLength()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->clearSearchAttributes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->mergeSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->setGridX(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQueryLength(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->setQueryLength(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1524
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;-><init>()V

    .line 1527
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 1528
    const-class v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1530
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 445
    return-void
.end method

.method private clearGridX()V
    .locals 1

    .line 1228
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->gridX_:I

    .line 1230
    return-void
.end method

.method private clearQueryLength()V
    .locals 1

    .line 1115
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->queryLength_:I

    .line 1117
    return-void
.end method

.method private clearSearchAttributes()V
    .locals 1

    .line 1173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1174
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1175
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1

    .line 1533
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method private mergeSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1158
    if-eqz p1, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    if-eqz v0, :cond_0

    .line 1162
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1164
    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->newBuilder(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    goto :goto_0

    .line 1166
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1168
    :goto_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1169
    return-void

    .line 1159
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1

    .line 1307
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    .line 1310
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1284
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1248
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1255
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1242
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1260
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1267
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;",
            ">;"
        }
    .end annotation

    .line 1539
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGridX(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1215
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1216
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->gridX_:I

    .line 1217
    return-void
.end method

.method private setQueryLength(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1108
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1109
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->queryLength_:I

    .line 1110
    return-void
.end method

.method private setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;

    .line 1150
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1151
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1152
    return-void
.end method

.method private setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1139
    if-eqz p1, :cond_0

    .line 1142
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1143
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    .line 1144
    return-void

    .line 1140
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

    .line 1472
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1514
    :pswitch_0
    return-object v2

    .line 1511
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1496
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1497
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;>;"
    if-nez v0, :cond_1

    .line 1498
    const-class v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    monitor-enter v1

    .line 1499
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1500
    if-nez v0, :cond_0

    .line 1501
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1504
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1506
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1508
    :cond_1
    :goto_0
    return-object v0

    .line 1493
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    return-object v0

    .line 1480
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "queryLength_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "searchAttributes_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gridX_"

    aput-object v2, v0, v1

    .line 1486
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\u0004\u0002"

    .line 1489
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1477
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder-IA;)V

    return-object v0

    .line 1474
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;-><init>()V

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

.method public getGridX()I
    .locals 1

    .line 1203
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->gridX_:I

    return v0
.end method

.method public getQueryLength()I
    .locals 1

    .line 1102
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->queryLength_:I

    return v0
.end method

.method public getSearchAttributes()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->searchAttributes_:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 1190
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQueryLength()Z
    .locals 2

    .line 1095
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSearchAttributes()Z
    .locals 1

    .line 1126
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
