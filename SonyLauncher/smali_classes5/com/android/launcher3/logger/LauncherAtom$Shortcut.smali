.class public final Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ShortcutOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Shortcut"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$Shortcut;",
        "Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ShortcutOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUT_ID_FIELD_NUMBER:I = 0x2

.field public static final SHORTCUT_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private shortcutId_:Ljava/lang/String;

.field private shortcutName_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearShortcutId(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->clearShortcutId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearShortcutName(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->clearShortcutName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutId(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->setShortcutId(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutIdBytes(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->setShortcutIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutName(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->setShortcutName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShortcutNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->setShortcutNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 8451
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;-><init>()V

    .line 8454
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 8455
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8457
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8083
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8084
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    .line 8085
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    .line 8086
    return-void
.end method

.method private clearShortcutId()V
    .locals 1

    .line 8181
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8182
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    .line 8183
    return-void
.end method

.method private clearShortcutName()V
    .locals 1

    .line 8127
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8128
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    .line 8129
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1

    .line 8460
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1

    .line 8271
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$Shortcut;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    .line 8274
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8248
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8254
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8212
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8219
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8259
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8266
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8236
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8243
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8199
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8206
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8224
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8231
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$Shortcut;",
            ">;"
        }
    .end annotation

    .line 8466
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setShortcutId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8171
    if-eqz p1, :cond_0

    .line 8174
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8175
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    .line 8176
    return-void

    .line 8172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setShortcutIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8189
    if-eqz p1, :cond_0

    .line 8192
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8193
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    .line 8194
    return-void

    .line 8190
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setShortcutName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8117
    if-eqz p1, :cond_0

    .line 8120
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8121
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    .line 8122
    return-void

    .line 8118
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setShortcutNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8135
    if-eqz p1, :cond_0

    .line 8138
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    .line 8139
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    .line 8140
    return-void

    .line 8136
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

    .line 8400
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8441
    :pswitch_0
    return-object v2

    .line 8438
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 8423
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->PARSER:Lcom/google/protobuf/Parser;

    .line 8424
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Shortcut;>;"
    if-nez v0, :cond_1

    .line 8425
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    monitor-enter v1

    .line 8426
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 8427
    if-nez v0, :cond_0

    .line 8428
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 8431
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->PARSER:Lcom/google/protobuf/Parser;

    .line 8433
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8435
    :cond_1
    :goto_0
    return-object v0

    .line 8420
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$Shortcut;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object v0

    .line 8408
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "shortcutName_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcutId_"

    aput-object v2, v0, v1

    .line 8413
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001"

    .line 8416
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 8405
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder-IA;)V

    return-object v0

    .line 8402
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;-><init>()V

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

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 8156
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8164
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutName()Ljava/lang/String;
    .locals 1

    .line 8102
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8110
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->shortcutName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasShortcutId()Z
    .locals 1

    .line 8149
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShortcutName()Z
    .locals 2

    .line 8095
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
