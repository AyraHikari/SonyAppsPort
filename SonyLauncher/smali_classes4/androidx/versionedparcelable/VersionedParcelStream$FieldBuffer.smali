.class Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldBuffer"
.end annotation


# instance fields
.field final mDataStream:Ljava/io/DataOutputStream;

.field private final mFieldId:I

.field final mOutput:Ljava/io/ByteArrayOutputStream;

.field private final mTarget:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(ILjava/io/DataOutputStream;)V
    .locals 2
    .param p1, "fieldId"    # I
    .param p2, "target"    # Ljava/io/DataOutputStream;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    .line 563
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    .line 570
    iput p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    .line 571
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    .line 572
    return-void
.end method


# virtual methods
.method flushField()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 576
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 577
    .local v0, "size":I
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    if-lt v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    or-int/2addr v1, v3

    .line 578
    .local v1, "fieldInfo":I
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 579
    if-lt v0, v2, :cond_1

    .line 580
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 582
    :cond_1
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 583
    return-void
.end method
