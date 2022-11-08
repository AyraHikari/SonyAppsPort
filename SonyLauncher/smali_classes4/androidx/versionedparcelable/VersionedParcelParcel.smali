.class Landroidx/versionedparcelable/VersionedParcelParcel;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private mCurrentField:I

.field private final mEnd:I

.field private mFieldId:I

.field private mNextRead:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;

.field private final mPositionLookup:Landroid/util/SparseIntArray;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v5}, Landroidx/collection/SimpleArrayMap;-><init>()V

    new-instance v6, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v6}, Landroidx/collection/SimpleArrayMap;-><init>()V

    new-instance v7, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v7}, Landroidx/collection/SimpleArrayMap;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "end"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 70
    .local p5, "readCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p6, "writeCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p7, "parcelizerCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;)V

    .line 44
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 54
    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    .line 71
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    .line 72
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    .line 73
    iput p3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    .line 74
    iput p2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 75
    iput-object p4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public closeField()V
    .locals 4

    .line 109
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    if-ltz v0, :cond_0

    .line 110
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 111
    .local v0, "currentFieldPosition":I
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 112
    .local v1, "position":I
    sub-int v2, v1, v0

    .line 117
    .local v2, "size":I
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    .end local v0    # "currentFieldPosition":I
    .end local v1    # "position":I
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .locals 9

    .line 129
    new-instance v8, Landroidx/versionedparcelable/VersionedParcelParcel;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 130
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    iget v3, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mOffset:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    :cond_0
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mReadCache:Landroidx/collection/SimpleArrayMap;

    iget-object v6, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mWriteCache:Landroidx/collection/SimpleArrayMap;

    iget-object v7, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcelizerCache:Landroidx/collection/SimpleArrayMap;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;)V

    .line 129
    return-object v8
.end method

.method public readBoolean()Z
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 2

    .line 269
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public readByteArray()[B
    .locals 3

    .line 250
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 252
    const/4 v1, 0x0

    return-object v1

    .line 254
    :cond_0
    new-array v1, v0, [B

    .line 255
    .local v1, "bytes":[B
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 256
    return-object v1
.end method

.method protected readCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .line 212
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readField(I)Z
    .locals 4
    .param p1, "fieldId"    # I

    .line 80
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mEnd:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 81
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    if-ne v0, p1, :cond_0

    .line 82
    return v2

    .line 84
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    return v3

    .line 87
    :cond_1
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "size":I
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    .line 92
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mNextRead:I

    .line 93
    .end local v0    # "size":I
    goto :goto_0

    .line 94
    :cond_2
    iget v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mFieldId:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public readFloat()F
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 222
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public setOutputField(I)V
    .locals 2
    .param p1, "fieldId"    # I

    .line 99
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelParcel;->closeField()V

    .line 100
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mCurrentField:I

    .line 101
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mPositionLookup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 104
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelParcel;->writeInt(I)V

    .line 105
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 191
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return-void
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    .line 201
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_0
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_0
    return-void
.end method

.method protected writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 206
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 207
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "val"    # D

    .line 171
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 172
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "val"    # F

    .line 166
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "val"    # I

    .line 156
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "val"    # J

    .line 161
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    return-void
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 186
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IBinder;

    .line 181
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 182
    return-void
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    .line 196
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    return-void
.end method
