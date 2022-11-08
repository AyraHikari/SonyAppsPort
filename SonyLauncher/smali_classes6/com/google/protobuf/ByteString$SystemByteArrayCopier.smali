.class final Lcom/google/protobuf/ByteString$SystemByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemByteArrayCopier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ByteString$1;

    .line 104
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$SystemByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom([BII)[B
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 107
    new-array v0, p3, [B

    .line 108
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-object v0
.end method
