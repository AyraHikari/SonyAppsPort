.class public final Lcom/google/android/gms/wearable/internal/zzl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private final packageName:Ljava/lang/String;

.field private final zzbf:Ljava/lang/String;

.field private final zzbg:Ljava/lang/String;

.field private final zzbh:Ljava/lang/String;

.field private final zzbi:Ljava/lang/String;

.field private final zzbj:Ljava/lang/String;

.field private final zzbk:Ljava/lang/String;

.field private final zzbl:B

.field private final zzbm:B

.field private final zzbn:B

.field private final zzbo:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    .line 9
    iput-byte p8, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    .line 10
    iput-byte p9, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    .line 11
    iput-byte p10, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    .line 12
    iput-byte p11, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    .line 13
    iput-object p12, p0, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 70
    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzl;

    .line 71
    iget v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    iget v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    if-eq v2, v3, :cond_2

    return v1

    .line 73
    :cond_2
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    if-eq v2, v3, :cond_3

    return v1

    .line 75
    :cond_3
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    if-eq v2, v3, :cond_4

    return v1

    .line 77
    :cond_4
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    if-eq v2, v3, :cond_5

    return v1

    .line 79
    :cond_5
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    if-eq v2, v3, :cond_6

    return v1

    .line 81
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 83
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 85
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 87
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 89
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 91
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_d
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    if-eqz v2, :cond_e

    :goto_1
    return v1

    .line 93
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    if-nez p1, :cond_10

    return v0

    :cond_10
    return v1

    :cond_11
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 94
    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 65
    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    iget-byte v7, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    iget-byte v8, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    iget-byte v9, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    iget-byte v10, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    iget-object v11, p0, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0xd3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "AncsNotificationParcelable{, id="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appId=\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", notificationText=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", displayName=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventFlags="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryCount="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 18
    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->id:I

    const/4 v1, 0x2

    .line 19
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 23
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbg:Ljava/lang/String;

    const/4 v2, 0x4

    .line 27
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbh:Ljava/lang/String;

    const/4 v2, 0x5

    .line 31
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbi:Ljava/lang/String;

    const/4 v2, 0x6

    .line 35
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbj:Ljava/lang/String;

    const/4 v2, 0x7

    .line 39
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbk:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbf:Ljava/lang/String;

    :cond_0
    const/16 v2, 0x8

    .line 46
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    .line 48
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbl:B

    .line 49
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    const/16 v0, 0xa

    .line 51
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbm:B

    .line 52
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    const/16 v0, 0xb

    .line 54
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbn:B

    .line 55
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    const/16 v0, 0xc

    .line 57
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->zzbo:B

    .line 58
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    const/16 v0, 0xd

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzl;->packageName:Ljava/lang/String;

    .line 62
    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
