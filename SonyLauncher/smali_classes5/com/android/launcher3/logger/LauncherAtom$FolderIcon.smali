.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderIcon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

.field public static final FROM_LABEL_STATE_FIELD_NUMBER:I = 0x2

.field public static final LABEL_INFO_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_LABEL_STATE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private fromLabelState_:I

.field private labelInfo_:Ljava/lang/String;

.field private toLabelState_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->clearCardinality()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->clearFromLabelState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->clearLabelInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->clearToLabelState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->setCardinality(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$FromState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->setLabelInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLabelInfoBytes(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->setLabelInfoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$ToState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 10528
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;-><init>()V

    .line 10531
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 10532
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10534
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9910
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9911
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    .line 9912
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 9957
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 9958
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->cardinality_:I

    .line 9959
    return-void
.end method

.method private clearFromLabelState()V
    .locals 1

    .line 10008
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10009
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->fromLabelState_:I

    .line 10010
    return-void
.end method

.method private clearLabelInfo()V
    .locals 1

    .line 10127
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10128
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    .line 10129
    return-void
.end method

.method private clearToLabelState()V
    .locals 1

    .line 10059
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10060
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->toLabelState_:I

    .line 10061
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1

    .line 10537
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10222
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    .line 10225
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10199
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10205
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10163
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10170
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10210
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10217
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10187
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10194
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10150
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10157
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10175
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10182
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
            ">;"
        }
    .end annotation

    .line 10543
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCardinality(I)V
    .locals 1
    .param p1, "value"    # I

    .line 9946
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 9947
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->cardinality_:I

    .line 9948
    return-void
.end method

.method private setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 9994
    if-eqz p1, :cond_0

    .line 9997
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 9998
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->fromLabelState_:I

    .line 9999
    return-void

    .line 9995
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLabelInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10112
    if-eqz p1, :cond_0

    .line 10115
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10116
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    .line 10117
    return-void

    .line 10113
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLabelInfoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10140
    if-eqz p1, :cond_0

    .line 10143
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10144
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    .line 10145
    return-void

    .line 10141
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 10045
    if-eqz p1, :cond_0

    .line 10048
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    .line 10049
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->toLabelState_:I

    .line 10050
    return-void

    .line 10046
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

    .line 10473
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 10518
    :pswitch_0
    return-object v2

    .line 10515
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 10500
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->PARSER:Lcom/google/protobuf/Parser;

    .line 10501
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;>;"
    if-nez v0, :cond_1

    .line 10502
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    monitor-enter v1

    .line 10503
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 10504
    if-nez v0, :cond_0

    .line 10505
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 10508
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->PARSER:Lcom/google/protobuf/Parser;

    .line 10510
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 10512
    :cond_1
    :goto_0
    return-object v0

    .line 10497
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object v0

    .line 10481
    :pswitch_4
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "cardinality_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fromLabelState_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 10485
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toLabelState_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 10487
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "labelInfo_"

    aput-object v2, v0, v1

    .line 10490
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u000c\u0001\u0003\u000c\u0002\u0004\u0008\u0003"

    .line 10493
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 10478
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder-IA;)V

    return-object v0

    .line 10475
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;-><init>()V

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

.method public getCardinality()I
    .locals 1

    .line 9936
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->cardinality_:I

    return v0
.end method

.method public getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 2

    .line 9983
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->fromLabelState_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    .line 9984
    .local v0, "result":Lcom/android/launcher3/logger/LauncherAtom$FromState;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getLabelInfo()Ljava/lang/String;
    .locals 1

    .line 10087
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10100
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->labelInfo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 2

    .line 10034
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->toLabelState_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    .line 10035
    .local v0, "result":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hasCardinality()Z
    .locals 2

    .line 9925
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFromLabelState()Z
    .locals 1

    .line 9972
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabelInfo()Z
    .locals 1

    .line 10075
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasToLabelState()Z
    .locals 1

    .line 10023
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
