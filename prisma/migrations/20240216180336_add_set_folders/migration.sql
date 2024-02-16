-- DropIndex
DROP INDEX `Set_authorId_idx` ON `Set`;

-- AlterTable
ALTER TABLE `Set` ADD COLUMN `folderId` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `Folder` (
    `id` VARCHAR(191) NOT NULL,
    `parentFolderId` VARCHAR(191) NULL,
    `authorId` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `private` BOOLEAN NOT NULL,
    `color` VARCHAR(7) NOT NULL,

    INDEX `Folder_parentFolderId_authorId_idx`(`parentFolderId`, `authorId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Set_authorId_folderId_idx` ON `Set`(`authorId`, `folderId`);
