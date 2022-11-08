.class public final Lcom/android/launcher3/logger/LauncherAtom$Widget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_WIDGET_ID_FIELD_NUMBER:I = 0x3

.field public static final COMPONENT_NAME_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPAN_X_FIELD_NUMBER:I = 0x1

.field public static final SPAN_Y_FIELD_NUMBER:I = 0x2

.field public static final WIDGET_FEATURES_FIELD_NUMBER:I = 0x6


# instance fields
.field private appWidgetId_:I

.field private bitField0_:I

.field private componentName_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private spanX_:I

.field private spanY_:I

.field private widgetFeatures_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearAppWidgetId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearComponentName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearPackageName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearSpanX()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearSpanY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->clearWidgetFeatures()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setAppWidgetId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setComponentName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setComponentNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setSpanX(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setSpanY(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->setWidgetFeatures(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 9292
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;-><init>()V

    .line 9295
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Widget;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 9296
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9298
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Widget;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8574
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8575
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanX_:I

    .line 8576
    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanY_:I

    .line 8577
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    .line 8578
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    .line 8579
    return-void
.end method

.method private clearAppWidgetId()V
    .locals 1

    .line 8670
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8671
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->appWidgetId_:I

    .line 8672
    return-void
.end method

.method private clearComponentName()V
    .locals 1

    .line 8811
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8812
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    .line 8813
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 8733
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8734
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    .line 8735
    return-void
.end method

.method private clearSpanX()V
    .locals 1

    .line 8608
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8609
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanX_:I

    .line 8610
    return-void
.end method

.method private clearSpanY()V
    .locals 1

    .line 8639
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8640
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanY_:I

    .line 8641
    return-void
.end method

.method private clearWidgetFeatures()V
    .locals 1

    .line 8857
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8858
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->widgetFeatures_:I

    .line 8859
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1

    .line 9301
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 8936
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Widget;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$Widget;

    .line 8939
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8913
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8919
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8877
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8884
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8924
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8931
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8901
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8908
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8864
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8871
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8889
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8896
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
            ">;"
        }
    .end annotation

    .line 9307
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppWidgetId(I)V
    .locals 1
    .param p1, "value"    # I

    .line 8663
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8664
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->appWidgetId_:I

    .line 8665
    return-void
.end method

.method private setComponentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8797
    if-eqz p1, :cond_0

    .line 8800
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8801
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    .line 8802
    return-void

    .line 8798
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setComponentNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8823
    if-eqz p1, :cond_0

    .line 8826
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8827
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    .line 8828
    return-void

    .line 8824
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8719
    if-eqz p1, :cond_0

    .line 8722
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8723
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    .line 8724
    return-void

    .line 8720
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8745
    if-eqz p1, :cond_0

    .line 8748
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8749
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    .line 8750
    return-void

    .line 8746
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setSpanX(I)V
    .locals 1
    .param p1, "value"    # I

    .line 8601
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8602
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanX_:I

    .line 8603
    return-void
.end method

.method private setSpanY(I)V
    .locals 1
    .param p1, "value"    # I

    .line 8632
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8633
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanY_:I

    .line 8634
    return-void
.end method

.method private setWidgetFeatures(I)V
    .locals 1
    .param p1, "value"    # I

    .line 8850
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    .line 8851
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->widgetFeatures_:I

    .line 8852
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 9237
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9282
    :pswitch_0
    return-object v2

    .line 9279
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 9264
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->PARSER:Lcom/google/protobuf/Parser;

    .line 9265
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Widget;>;"
    if-nez v0, :cond_1

    .line 9266
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    monitor-enter v1

    .line 9267
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Widget;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 9268
    if-nez v0, :cond_0

    .line 9269
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 9272
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->PARSER:Lcom/google/protobuf/Parser;

    .line 9274
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9276
    :cond_1
    :goto_0
    return-object v0

    .line 9261
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Widget;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object v0

    .line 9245
    :pswitch_4
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "spanX_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "spanY_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "appWidgetId_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "packageName_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "componentName_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "widgetFeatures_"

    aput-object v2, v0, v1

    .line 9254
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u0004\u0005"

    .line 9257
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Widget;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 9242
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder-IA;)V

    return-object v0

    .line 9239
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;-><init>()V

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

.method public getAppWidgetId()I
    .locals 1

    .line 8657
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->appWidgetId_:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 8774
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8786
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->componentName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 8696
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8708
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .line 8595
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanX_:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .line 8626
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->spanY_:I

    return v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 8844
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->widgetFeatures_:I

    return v0
.end method

.method public hasAppWidgetId()Z
    .locals 1

    .line 8650
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 8763
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 8685
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpanX()Z
    .locals 2

    .line 8588
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSpanY()Z
    .locals 1

    .line 8619
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidgetFeatures()Z
    .locals 1

    .line 8837
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
