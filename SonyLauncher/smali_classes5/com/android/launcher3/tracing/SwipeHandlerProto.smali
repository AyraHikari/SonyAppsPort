.class public final Lcom/android/launcher3/tracing/SwipeHandlerProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SwipeHandlerProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_TO_OVERVIEW_PROGRESS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

.field public static final GESTURE_STATE_FIELD_NUMBER:I = 0x1

.field public static final IS_RECENTS_ATTACHED_TO_APP_WINDOW_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/SwipeHandlerProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCROLL_OFFSET_FIELD_NUMBER:I = 0x3


# instance fields
.field private appToOverviewProgress_:F

.field private bitField0_:I

.field private gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

.field private isRecentsAttachedToAppWindow_:Z

.field private scrollOffset_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->clearAppToOverviewProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->clearGestureState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->clearIsRecentsAttachedToAppWindow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->clearScrollOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->mergeGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->setAppToOverviewProgress(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->setGestureState(Lcom/android/launcher3/tracing/GestureStateProto$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->setGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->setIsRecentsAttachedToAppWindow(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->setScrollOffset(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 495
    new-instance v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;-><init>()V

    .line 498
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/SwipeHandlerProto;
    sput-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 499
    const-class v1, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 501
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/SwipeHandlerProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method private clearAppToOverviewProgress()V
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->appToOverviewProgress_:F

    .line 182
    return-void
.end method

.method private clearGestureState()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 72
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 73
    return-void
.end method

.method private clearIsRecentsAttachedToAppWindow()V
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->isRecentsAttachedToAppWindow_:Z

    .line 104
    return-void
.end method

.method private clearScrollOffset()V
    .locals 1

    .line 133
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->scrollOffset_:I

    .line 135
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1

    .line 504
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method private mergeGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 56
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto;->getDefaultInstance()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 62
    invoke-static {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->newBuilder(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    goto :goto_0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 66
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 67
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 259
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/SwipeHandlerProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/SwipeHandlerProto;

    .line 262
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/SwipeHandlerProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/SwipeHandlerProto;",
            ">;"
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppToOverviewProgress(F)V
    .locals 1
    .param p1, "value"    # F

    .line 169
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 170
    iput p1, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->appToOverviewProgress_:F

    .line 171
    return-void
.end method

.method private setGestureState(Lcom/android/launcher3/tracing/GestureStateProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    .line 48
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 49
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 50
    return-void
.end method

.method private setGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 37
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 41
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setIsRecentsAttachedToAppWindow(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 95
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 96
    iput-boolean p1, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->isRecentsAttachedToAppWindow_:Z

    .line 97
    return-void
.end method

.method private setScrollOffset(I)V
    .locals 1
    .param p1, "value"    # I

    .line 126
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    .line 127
    iput p1, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->scrollOffset_:I

    .line 128
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 485
    :pswitch_0
    return-object v2

    .line 482
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 467
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 468
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/SwipeHandlerProto;>;"
    if-nez v0, :cond_1

    .line 469
    const-class v1, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    monitor-enter v1

    .line 470
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/SwipeHandlerProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 471
    if-nez v0, :cond_0

    .line 472
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 475
    sput-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 477
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 479
    :cond_1
    :goto_0
    return-object v0

    .line 464
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/SwipeHandlerProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    return-object v0

    .line 450
    :pswitch_4
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "gestureState_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isRecentsAttachedToAppWindow_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "scrollOffset_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "appToOverviewProgress_"

    aput-object v2, v0, v1

    .line 457
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\u0007\u0001\u0003\u0004\u0002\u0004\u0001\u0003"

    .line 460
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/SwipeHandlerProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 447
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;-><init>(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder-IA;)V

    return-object v0

    .line 444
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;-><init>()V

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

.method public getAppToOverviewProgress()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->appToOverviewProgress_:F

    return v0
.end method

.method public getGestureState()Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->gestureState_:Lcom/android/launcher3/tracing/GestureStateProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto;->getDefaultInstance()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->isRecentsAttachedToAppWindow_:Z

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->scrollOffset_:I

    return v0
.end method

.method public hasAppToOverviewProgress()Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGestureState()Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScrollOffset()Z
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
