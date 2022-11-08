.class public Landroidx/slice/SliceItemHolder;
.super Ljava/lang/Object;
.source "SliceItemHolder.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItemHolder$SliceItemPool;,
        Landroidx/slice/SliceItemHolder$HolderHandler;
    }
.end annotation


# static fields
.field public static sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

.field public static final sSerializeLock:Ljava/lang/Object;


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCallback:Ljava/lang/Object;

.field mInt:I

.field mLong:J

.field mParcelable:Landroid/os/Parcelable;

.field private mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

.field mStr:Ljava/lang/String;

.field public mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroidx/slice/SliceItemHolder$SliceItemPool;)V
    .locals 3
    .param p1, "pool"    # Landroidx/slice/SliceItemHolder$SliceItemPool;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 59
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 63
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 69
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    .line 76
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "mObj"    # Ljava/lang/Object;
    .param p3, "isStream"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 59
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 63
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 69
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 117
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    goto :goto_4

    .line 114
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 115
    goto :goto_4

    .line 111
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 112
    goto :goto_4

    .line 107
    :pswitch_3
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0, v1}, Landroidx/core/text/HtmlCompat;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 108
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 109
    goto :goto_4

    .line 104
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 105
    goto :goto_4

    .line 101
    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 102
    goto :goto_4

    .line 92
    :pswitch_6
    move-object v0, p2

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 93
    move-object v0, p2

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_3

    .line 94
    :cond_2
    if-eqz p3, :cond_3

    .line 97
    :goto_3
    move-object v0, p2

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 98
    goto :goto_4

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write callback to parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :goto_4
    sget-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz v0, :cond_4

    .line 121
    invoke-interface {v0, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    .line 123
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 129
    sget-object v0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0, p1}, Landroidx/slice/SliceItemHolder$HolderHandler;->handle(Landroidx/slice/SliceItemHolder;Ljava/lang/String;)V

    .line 132
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "slice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "bundle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 150
    :pswitch_1
    iget-wide v0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_2
    iget v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_3
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 144
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0

    .line 141
    :pswitch_4
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    return-object v0

    .line 139
    :pswitch_5
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    return-object v0

    .line 134
    :pswitch_6
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    if-nez v0, :cond_4

    iget-object v1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    if-nez v1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_4
    new-instance v1, Landroidx/core/util/Pair;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    :goto_2
    iget-object v2, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast v2, Landroidx/slice/Slice;

    invoke-direct {v1, v0, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mPool:Landroidx/slice/SliceItemHolder$SliceItemPool;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Landroidx/slice/SliceItemHolder$SliceItemPool;->release(Landroidx/slice/SliceItemHolder;)V

    .line 86
    :cond_0
    return-void
.end method
