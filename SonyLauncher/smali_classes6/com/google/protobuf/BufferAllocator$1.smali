.class Lcom/google/protobuf/BufferAllocator$1;
.super Lcom/google/protobuf/BufferAllocator;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 1
    .param p1, "capacity"    # I

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method public allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 1
    .param p1, "capacity"    # I

    .line 45
    new-array v0, p1, [B

    invoke-static {v0}, Lcom/google/protobuf/AllocatedBuffer;->wrap([B)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method
