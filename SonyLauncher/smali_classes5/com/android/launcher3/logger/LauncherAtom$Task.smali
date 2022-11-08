.class public final Lcom/android/launcher3/logger/LauncherAtom$Task;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$Task;",
        "Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMPONENT_NAME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

.field public static final INDEX_FIELD_NUMBER:I = 0x3

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private componentName_:Ljava/lang/String;

.field private index_:I

.field private packageName_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->clearComponentName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->clearIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->clearPackageName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->setComponentName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->setComponentNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->setIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 9795
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;-><init>()V

    .line 9798
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Task;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 9799
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9801
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Task;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9364
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9365
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    .line 9366
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    .line 9367
    return-void
.end method

.method private clearComponentName()V
    .locals 1

    .line 9462
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9463
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    .line 9464
    return-void
.end method

.method private clearIndex()V
    .locals 1

    .line 9504
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9505
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->index_:I

    .line 9506
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 9408
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9409
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    .line 9410
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1

    .line 9804
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 9583
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Task;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$Task;

    .line 9586
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9560
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9566
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9524
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9531
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9571
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9578
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9548
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9555
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9511
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9518
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9536
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9543
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Task;",
            ">;"
        }
    .end annotation

    .line 9810
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setComponentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9452
    if-eqz p1, :cond_0

    .line 9455
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9456
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    .line 9457
    return-void

    .line 9453
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setComponentNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9470
    if-eqz p1, :cond_0

    .line 9473
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9474
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    .line 9475
    return-void

    .line 9471
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 9497
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9498
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->index_:I

    .line 9499
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9398
    if-eqz p1, :cond_0

    .line 9401
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9402
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    .line 9403
    return-void

    .line 9399
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9416
    if-eqz p1, :cond_0

    .line 9419
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    .line 9420
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    .line 9421
    return-void

    .line 9417
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

    .line 9743
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9788
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9785
    :pswitch_0
    return-object v2

    .line 9782
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 9767
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->PARSER:Lcom/google/protobuf/Parser;

    .line 9768
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Task;>;"
    if-nez v0, :cond_1

    .line 9769
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Task;

    monitor-enter v1

    .line 9770
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Task;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 9771
    if-nez v0, :cond_0

    .line 9772
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 9775
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->PARSER:Lcom/google/protobuf/Parser;

    .line 9777
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9779
    :cond_1
    :goto_0
    return-object v0

    .line 9764
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Task;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object v0

    .line 9751
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "packageName_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "componentName_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "index_"

    aput-object v2, v0, v1

    .line 9757
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0004\u0002"

    .line 9760
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Task;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 9748
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder-IA;)V

    return-object v0

    .line 9745
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;-><init>()V

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

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 9437
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9445
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->componentName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 9491
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->index_:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 9383
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9391
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 9430
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

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
    .locals 1

    .line 9484
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 9376
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
