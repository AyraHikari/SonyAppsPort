.class public final Lcom/android/launcher3/logger/LauncherAtom$Application;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$Application;",
        "Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private componentName_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->clearComponentName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->clearPackageName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->setComponentName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->setComponentNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 8020
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;-><init>()V

    .line 8023
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Application;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 8024
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8026
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Application;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7653
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    .line 7654
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    .line 7655
    return-void
.end method

.method private clearComponentName()V
    .locals 1

    .line 7750
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7751
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    .line 7752
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 7696
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7697
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    .line 7698
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1

    .line 8029
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1

    .line 7840
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Application;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$Application;

    .line 7843
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7817
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7823
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7781
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7788
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7828
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7835
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7805
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7812
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7768
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7775
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7793
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7800
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Application;",
            ">;"
        }
    .end annotation

    .line 8035
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setComponentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7740
    if-eqz p1, :cond_0

    .line 7743
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7744
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    .line 7745
    return-void

    .line 7741
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setComponentNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7758
    if-eqz p1, :cond_0

    .line 7761
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7762
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    .line 7763
    return-void

    .line 7759
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 7686
    if-eqz p1, :cond_0

    .line 7689
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7690
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    .line 7691
    return-void

    .line 7687
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 7704
    if-eqz p1, :cond_0

    .line 7707
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    .line 7708
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    .line 7709
    return-void

    .line 7705
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

    .line 7969
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8013
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8010
    :pswitch_0
    return-object v2

    .line 8007
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7992
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->PARSER:Lcom/google/protobuf/Parser;

    .line 7993
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Application;>;"
    if-nez v0, :cond_1

    .line 7994
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Application;

    monitor-enter v1

    .line 7995
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Application;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 7996
    if-nez v0, :cond_0

    .line 7997
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 8000
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->PARSER:Lcom/google/protobuf/Parser;

    .line 8002
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8004
    :cond_1
    :goto_0
    return-object v0

    .line 7989
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Application;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object v0

    .line 7977
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "packageName_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "componentName_"

    aput-object v2, v0, v1

    .line 7982
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001"

    .line 7985
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Application;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 7974
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder-IA;)V

    return-object v0

    .line 7971
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;-><init>()V

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

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 7725
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7733
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->componentName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 7671
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7679
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 7718
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPackageName()Z
    .locals 2

    .line 7664
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
