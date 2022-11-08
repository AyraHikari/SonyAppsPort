.class final Lcom/google/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/google/protobuf/MessageInfo;


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 181
    iput-object p2, p0, Lcom/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "position":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 185
    .local v0, "value":I
    const v2, 0xd800

    if-ge v0, v2, :cond_0

    .line 186
    iput v0, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    goto :goto_1

    .line 188
    :cond_0
    and-int/lit16 v3, v0, 0x1fff

    .line 189
    .local v3, "result":I
    const/16 v4, 0xd

    .line 190
    .local v4, "shift":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "position":I
    .local v5, "position":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    if-lt v1, v2, :cond_1

    .line 191
    and-int/lit16 v1, v0, 0x1fff

    shl-int/2addr v1, v4

    or-int/2addr v3, v1

    .line 192
    add-int/lit8 v4, v4, 0xd

    move v1, v5

    goto :goto_0

    .line 194
    :cond_1
    shl-int v1, v0, v4

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    move v1, v5

    .line 196
    .end local v3    # "result":I
    .end local v4    # "shift":I
    .end local v5    # "position":I
    .restart local v1    # "position":I
    :goto_1
    return-void
.end method


# virtual methods
.method public getDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/protobuf/RawMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method getObjects()[Ljava/lang/Object;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method getStringInfo()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 2

    .line 213
    iget v0, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    :goto_0
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/google/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
