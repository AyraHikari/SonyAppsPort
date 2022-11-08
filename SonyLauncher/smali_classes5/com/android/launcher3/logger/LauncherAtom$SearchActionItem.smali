.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchActionItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->clearPackageName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->clearTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTitleBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 11270
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;-><init>()V

    .line 11273
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 11274
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11276
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10902
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10903
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 10904
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 10905
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 10946
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 10947
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 10948
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 11000
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11001
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11002
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1

    .line 11279
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1

    .line 11090
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 11093
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11067
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11073
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11031
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11038
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11078
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11085
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11055
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11062
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11018
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11025
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11043
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11050
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
            ">;"
        }
    .end annotation

    .line 11285
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10936
    if-eqz p1, :cond_0

    .line 10939
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 10940
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 10941
    return-void

    .line 10937
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10954
    if-eqz p1, :cond_0

    .line 10957
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 10958
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 10959
    return-void

    .line 10955
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10990
    if-eqz p1, :cond_0

    .line 10993
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 10994
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 10995
    return-void

    .line 10991
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11008
    if-eqz p1, :cond_0

    .line 11011
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11012
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11013
    return-void

    .line 11009
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

    .line 11219
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11260
    :pswitch_0
    return-object v2

    .line 11257
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11242
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11243
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;>;"
    if-nez v0, :cond_1

    .line 11244
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    monitor-enter v1

    .line 11245
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 11246
    if-nez v0, :cond_0

    .line 11247
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 11250
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11252
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 11254
    :cond_1
    :goto_0
    return-object v0

    .line 11239
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0

    .line 11227
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "packageName_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_"

    aput-object v2, v0, v1

    .line 11232
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001"

    .line 11235
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 11224
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder-IA;)V

    return-object v0

    .line 11221
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;-><init>()V

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

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 10921
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10929
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 10975
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10983
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPackageName()Z
    .locals 2

    .line 10914
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTitle()Z
    .locals 1

    .line 10968
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
