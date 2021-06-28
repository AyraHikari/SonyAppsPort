.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaMetadata$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzeb:[Ljava/lang/String;

.field private static final zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;


# instance fields
.field private final zzed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private final zzee:Landroid/os/Bundle;

.field private zzef:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 213
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const-string v2, "String"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "int"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "double"

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "ISO-8601 date String"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sput-object v1, Lcom/google/android/gms/cast/MediaMetadata;->zzeb:[Ljava/lang/String;

    .line 214
    new-instance v1, Lcom/google/android/gms/cast/zzam;

    invoke-direct {v1}, Lcom/google/android/gms/cast/zzam;-><init>()V

    sput-object v1, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    new-instance v1, Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaMetadata$zza;-><init>()V

    const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v7, "creationDateTime"

    .line 216
    invoke-virtual {v1, v2, v7, v6}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v7, "releaseDate"

    .line 217
    invoke-virtual {v1, v2, v7, v6}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v7, "originalAirdate"

    .line 218
    invoke-virtual {v1, v2, v7, v6}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    const-string v6, "title"

    .line 219
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v6, "subtitle"

    .line 220
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v6, "artist"

    .line 221
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v6, "albumArtist"

    .line 222
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v6, "albumName"

    .line 223
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v6, "composer"

    .line 224
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v6, "discNumber"

    .line 225
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v6, "trackNumber"

    .line 226
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v6, "season"

    .line 227
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v6, "episode"

    .line 228
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v6, "seriesTitle"

    .line 229
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v6, "studio"

    .line 230
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v6, "width"

    .line 231
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v6, "height"

    .line 232
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v6, "location"

    .line 233
    invoke-virtual {v1, v2, v6, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v6, "latitude"

    .line 234
    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v6, "longitude"

    .line 235
    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    const-string v5, "sectionDuration"

    .line 236
    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    const-string v5, "sectionStartTimeInMedia"

    .line 237
    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    const-string v5, "sectionStartAbsoluteTime"

    .line 238
    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v2, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    const-string v5, "sectionStartTimeInContainer"

    .line 239
    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v0, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    const-string v2, "queueItemId"

    .line 240
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v0, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    const-string v2, "bookTitle"

    .line 241
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v0, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    const-string v2, "chapterNumber"

    .line 242
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    const-string v0, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    const-string v2, "chapterTitle"

    .line 243
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    sput-object v1, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/List;Landroid/os/Bundle;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    return-void
.end method

.method private static zza(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzg(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/google/android/gms/cast/MediaMetadata;->zzeb:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Value for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null and empty keys are not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    .line 197
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 202
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    .line 204
    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/cast/MediaMetadata;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_4

    if-nez v4, :cond_3

    .line 207
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v2

    .line 209
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addImage(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 171
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 172
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zza(Ljava/lang/String;I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 12

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "metadataType"

    .line 51
    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdy;->zzg(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "images"

    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 59
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 71
    :pswitch_0
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    aput-object v3, v2, v11

    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v9

    const-string v3, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 69
    :pswitch_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v5, v2, v11

    const-string v5, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v5, v2, v10

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v5, v2, v9

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v5, v2, v8

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v5, v2, v7

    const-string v5, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v5, v2, v6

    const-string v5, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v5, v2, v4

    const-string v4, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :pswitch_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v5, v2, v11

    const-string v5, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v5, v2, v10

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v5, v2, v9

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v5, v2, v8

    const-string v5, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v5, v2, v7

    const-string v5, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v5, v2, v6

    const-string v5, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v5, v2, v4

    const-string v4, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :pswitch_3
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v11

    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v3, v2, v9

    const-string v3, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :pswitch_4
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v11

    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v9

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :pswitch_5
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v11

    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v9

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 72
    :goto_1
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    aput-object v3, v2, v11

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    aput-object v3, v2, v9

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    :try_start_2
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    :goto_2
    if-ge v11, v2, :cond_2

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzg(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 84
    :pswitch_6
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 85
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    .line 86
    :try_start_3
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 82
    :pswitch_7
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 80
    :pswitch_8
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 78
    :pswitch_9
    sget-object v4, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.google."

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 92
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 93
    :cond_4
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 94
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 95
    :cond_5
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 184
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    .line 188
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 189
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzf(Lorg/json/JSONObject;)V
    .locals 11

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->clear()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    :try_start_0
    const-string v1, "metadataType"

    .line 103
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "images"

    .line 106
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzed:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/zzdy;->zza(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 109
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzef:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 121
    :pswitch_0
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    aput-object v3, v2, v0

    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    aput-object v3, v2, v7

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    :pswitch_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v5, v2, v0

    const-string v5, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v5, v2, v10

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v5, v2, v8

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v5, v2, v7

    const-string v5, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v5, v2, v9

    const-string v5, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v5, v2, v6

    const-string v5, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v5, v2, v4

    const-string v4, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :pswitch_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v5, v2, v0

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v5, v2, v10

    const-string v5, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v5, v2, v8

    const-string v5, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v5, v2, v7

    const-string v5, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v5, v2, v9

    const-string v5, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v5, v2, v6

    const-string v5, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v5, v2, v4

    const-string v4, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :pswitch_3
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v0

    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v3, v2, v7

    const-string v3, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :pswitch_4
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v0

    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :pswitch_5
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v3, v2, v0

    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    :goto_0
    sget-boolean v2, Lcom/google/android/gms/internal/cast/zzdl;->zzaaa:Z

    if-eqz v2, :cond_1

    .line 123
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    aput-object v3, v2, v0

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    aput-object v3, v2, v10

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    aput-object v3, v2, v8

    const-string v3, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    :cond_1
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    :catch_1
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "metadataType"

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 133
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_2

    .line 134
    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    sget-object v5, Lcom/google/android/gms/cast/MediaMetadata;->zzec:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzg(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 150
    :pswitch_6
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 151
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-long v5, v5

    .line 152
    :try_start_3
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 140
    :pswitch_7
    instance-of v2, v4, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 141
    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzdy;->zzx(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :pswitch_8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 145
    :pswitch_9
    instance-of v2, v4, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 138
    :pswitch_a
    instance-of v2, v4, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 156
    :cond_4
    :try_start_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 158
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :cond_5
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 160
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 161
    :cond_6
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzee:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :cond_7
    return-void

    :catch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
